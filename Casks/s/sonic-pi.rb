cask "sonic-pi" do
  arch arm: "Mac-arm64", intel: "Mac-x64"

  on_ventura :or_older do
    version "4.6.0"
    sha256 arm:   "47025f6c2c0047855fc0bc4b6953064a59fb7de1bfb7b8004b94ee18550b475f",
           intel: "c19b132a9426b9c44b22aaea10fa63b56b21a708e042f99496758d0076d61b23"

    url "https://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-#{arch}-v#{version.dots_to_hyphens}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_sonoma :or_newer do
    version "5.0.0"
    sha256 arm:   "3dd0b9873a74aa274d3723be098622fdea73896ceba29a1423af9e7b46a7c291",
           intel: "5a2634924646f85f410c8b7c51aca5b15b4cf3f1705c4771f3174d7762b1d20a"

    url "https://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-#{arch}-v#{version}.dmg"

    livecheck do
      url :homepage
      regex(/href=.*?Sonic[._-]Pi[._-]for[._-]#{arch}[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
      strategy :page_match do |page, regex|
        page.scan(regex).map { |match| match[0].tr("-", ".") }
      end
    end
  end

  name "Sonic Pi"
  desc "Code-based music creation and performance tool"
  homepage "https://sonic-pi.net/"

  depends_on :macos

  app "Sonic Pi.app"

  zap trash: [
    "~/.config/sonic-pi.net",
    "~/.sonic-pi",
    "~/Library/Preferences/net.sonic-pi.app.plist",
    "~/Library/Saved Application State/net.sonic-pi.app.savedState",
  ]
end
