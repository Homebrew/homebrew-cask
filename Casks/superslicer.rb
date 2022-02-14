cask "superslicer" do
  arch = Hardware::CPU.intel? ? "" : "arm_"

  version "2.3.57.11,220213"

  if Hardware::CPU.intel?
    sha256 "64ee98af7b2fafa3d7067c40712aaf40d36fe779991eb4fedd9f6d93108cc053"
  else
    sha256 "24eb4c299c69cd5f8c32fc164fe870af25aae0f0a20712ac8c1cabca30b65eb3"
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
