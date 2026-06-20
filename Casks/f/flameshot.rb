cask "flameshot" do
  arch arm: "arm64", intel: "intel"

  version "14.0.0,14.0"
  sha256 arm:   "bb0cccb2223ce0f4bfea00d90658e85fb5dc17aa7773bf2b22c70ffdb23d7221",
         intel: "871653260d9298db2e2a85e121c514f753dfdca94dccabbd74c142a2438f3d78"

  on_arm do
    depends_on macos: :sonoma
  end
  on_intel do
    depends_on macos: :ventura
  end

  url "https://github.com/flameshot-org/flameshot/releases/download/v#{version.csv.first}/Flameshot-#{version.csv.second || version.csv.first}-macos-#{arch}.dmg",
      verified: "github.com/flameshot-org/flameshot/"
  name "Flameshot"
  desc "Screenshot software with built-in annotation tools"
  homepage "https://flameshot.org/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/Flameshot[._-]v?(\d+(?:\.\d+)+)(?:[._-]artifact)?(?:[._-]macos)?[._-]#{arch}\.dmg}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :sequoia

  app "flameshot.app"

  uninstall quit: "org.flameshot.flameshot"

  zap trash: "~/.config/flameshot/flameshot.ini"
end
