cask "flameshot" do
  arch arm: "arm64", intel: "intel"

  version "14.0.0,14.0,git0.da6121bd"

  on_macos do
    sha256 arm:   "bb0cccb2223ce0f4bfea00d90658e85fb5dc17aa7773bf2b22c70ffdb23d7221",
           intel: "871653260d9298db2e2a85e121c514f753dfdca94dccabbd74c142a2438f3d78"

    on_arm do
      depends_on macos: :sonoma
    end
    on_intel do
      depends_on macos: :ventura
    end

    url "https://github.com/flameshot-org/flameshot/releases/download/v#{version.csv.first}/Flameshot-#{version.csv.second}-macos-#{arch}.dmg",
        verified: "github.com/flameshot-org/flameshot/"

    disable! date: "2026-09-01", because: :fails_gatekeeper_check

    depends_on macos: :sequoia

    app "Flameshot.app"

    uninstall quit: "org.flameshot.flameshot"
  end
  on_linux do
    sha256 "93ad1261ccae9387d35fd39a8b9428451163dfcba3f32658d80ec02ab0597789"

    url "https://github.com/flameshot-org/flameshot/releases/download/v#{version.csv.first}/flameshot-v#{version.csv.second}+#{version.csv.third}-artifact-appimage-x86_64.zip",
        verified: "github.com/flameshot-org/flameshot/"

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
