cask "synergy" do
  arch = Hardware::CPU.intel? ? "x86-64" : "arm64"

  version "1.14.1,37bbd3c0"

  if Hardware::CPU.intel?
    sha256 "fa3628e5956bb043395828449e7073c2ac561bbd6d50b933bc08e38e68a0e596"
  else
    sha256 "2b3358b8f94de63a74d1b29ea8a70f3e06b110b521a909403ec908ead51a8252"
  end

  url "https://binaries.symless.com/synergy/v#{version.csv.first.major}-core-standard/#{version.csv.first}-stable.#{version.csv.second}/synergy_#{version.csv.first}-stable.#{version.csv.second}_macos_#{arch}.dmg"
  name "Synergy"
  desc "Keyboard and mouse sharing tool - open-source core"
  homepage "https://symless.com/synergy"

  livecheck do
    url "https://github.com/symless/synergy-core"
    strategy :github_latest do |page|
      version = page[%r{href=.*?/tag/v?(\d+(?:\.\d+){,2})(?:\.\d+)*[._-]stable}i, 1]
      commit = page[%r{href=.*?/commit/(\h{8})}i, 1]
      "#{version},#{commit}"
    end
  end

  app "Synergy.app"
end
