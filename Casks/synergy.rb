cask "synergy" do
  version "1.13.1,063519a8"
  sha256 "8f58ab92b5609793ab10477aba6a7c0b22fce91c8cd51a7ab60bb5cb4b5bcc20"

  url "https://binaries.symless.com/synergy/v#{version.before_comma.major}-core-standard/#{version.before_comma}-stable.#{version.after_comma}/synergy_#{version.before_comma}-stable.#{version.after_comma}_macos_x86-64.dmg"
  name "Synergy"
  desc "Keyboard and mouse sharing tool - open-source core"
  homepage "https://symless.com/synergy"

  livecheck do
    url "https://github.com/symless/synergy-core"
    strategy :github_latest do |page|
      version = page[%r{href=".*?/tag/v?(\d+(?:\.\d+){,2})(?:\.\d+)*[._-]stable"}i, 1]
      commit = page[%r{href=".*?/commit/([0-9a-f]{8})[0-9a-f]*"}i, 1]
      "#{version},#{commit}"
    end
  end

  app "Synergy.app"
end
