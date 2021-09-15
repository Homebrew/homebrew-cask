cask "synergy" do
  version "1.14.0,67d824b8"
  sha256 "b52b0ca4e861a644cdfc66e48c0eea4d914e9a0df4b98887a4c7d9bf18253d26"

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
