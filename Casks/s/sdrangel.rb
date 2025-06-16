cask "sdrangel" do
  version "7.22.7"
  sha256 :no_check

  on_arm do
    url "https://github.com/f4exb/sdrangel/releases/download/v#{version}/sdrangel-#{version}_mac-14.7.5_arm64.dmg"
  end
  on_intel do
    url "https://github.com/f4exb/sdrangel/releases/download/v#{version}/sdrangel-#{version}_mac-13.7.5_x86_64.dmg"
  end

  name "SDRangel"
  desc "Software-defined radio TX/RX application with support for many devices"
  homepage "https://github.com/f4exb/sdrangel"

  livecheck do
    url :url
    regex(/^sdrangel[._-]v?(\d+(?:\.\d+)+)[._-]mac.*?\.(?:dmg)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten.compact.uniq
    end
  end

  app "SDRangel.app"
end
