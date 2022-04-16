cask "superslicer" do
  arch = Hardware::CPU.intel? ? "" : "arm_"

  version "2.3.57.12,220401"

  if Hardware::CPU.intel?
    sha256 "00c7398b3d5487ba594cffd449e4e4af4e7d6ae8cb8dd59531d4d37ea0b6f51a"
  else
    sha256 "eecd1698635b66930756ab71a294bac6b95f5254d930bf42706c63bbaa1def07"
  end

  url "https://github.com/supermerill/SuperSlicer/releases/download/#{version.csv.first}/SuperSlicer_#{version.csv.first}_macos_#{arch}#{version.csv.second}.dmg"
  name "SuperSlicer"
  desc "Convert 3D models into G-code instructions or PNG layers"
  homepage "https://github.com/supermerill/SuperSlicer"

  livecheck do
    url "https://github.com/supermerill/SuperSlicer/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/SuperSlicer_(\d+(?:\.\d+)+)_macos_(\d+)\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "SuperSlicer.app"

  zap trash: "~/Library/Application Support/SuperSlicer"
end
