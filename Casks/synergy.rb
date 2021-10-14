cask "synergy" do
  version "1.14.1,37bbd3c0"
  sha256 "fa3628e5956bb043395828449e7073c2ac561bbd6d50b933bc08e38e68a0e596"

  url "https://binaries.symless.com/synergy/v#{version.before_comma.major}-core-standard/#{version.before_comma}-stable.#{version.after_comma}/synergy_#{version.before_comma}-stable.#{version.after_comma}_macos_x86-64.dmg"
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
