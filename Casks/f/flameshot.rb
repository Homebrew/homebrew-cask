cask "flameshot" do
  arch arm: "arm64", intel: "intel"

  version "15.0.0,15.0.0,git0.f4f2e4e"
  sha256 arm:          "ff2f63fb630992385a8738f45fb819051dd6a30ff87909a8e98bfbf21170df3d",
         intel:        "bb3ba6c0f556c32051795d7007409e4d5ec2d810adb6c4e6e58498eeb1b51204",
         x86_64_linux: "c5ac8a5749454fab318fe8d613098e0aafa74340bb72fff2dac240eaad3cf78e"

  on_macos do
    on_arm do
      depends_on macos: :sonoma
    end
    on_intel do
      depends_on macos: :ventura
    end

    url "https://github.com/flameshot-org/flameshot/releases/download/v#{version.csv.first}/Flameshot-#{version.csv.second}-macos-#{arch}.dmg"

    disable! date: "2026-09-01", because: :fails_gatekeeper_check

    depends_on macos: :sequoia

    app "Flameshot.app"

    uninstall quit: "org.flameshot.flameshot"
  end
  on_linux do
    url "https://github.com/flameshot-org/flameshot/releases/download/v#{version.csv.first}/flameshot-v#{version.csv.second}+#{version.csv.third}-artifact-appimage-x86_64.zip"

    depends_on arch: :x86_64

    app_image "__w/flameshot/flameshot/Flameshot-#{version.csv.first}.x86_64.AppImage",
              target: "Flameshot.AppImage"
  end

  name "Flameshot"
  desc "Screenshot software with built-in annotation tools"
  homepage "https://flameshot.org/"

  livecheck do
    url :url
    regex(
      %r{/v?(\d+(?:\.\d+)+)/flameshot-v?(\d+(?:\.\d+)+)(?:\+|%2B)(git\d+\.\h+)-artifact-appimage-x86_64\.zip}i,
    )
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]},#{match[3]}"
      end
    end
  end

  zap trash: [
    "~/.cache/flameshot",
    "~/.config/flameshot",
    "~/Library/Caches/flameshot",
  ]
end
