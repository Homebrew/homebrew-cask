cask "sonic-pi" do
  arch arm: "Mac-arm64", intel: "Intel-Mac-x64"

  on_monterey :or_older do
    on_mojave :or_older do
      version "3.3.1"
      sha256 "0bfd12f930311e8ef1c7306dc9c012cfcc1f8e50710fd26a8c18ba003573a506"

      url "https://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Mac-x64-v#{version.dots_to_hyphens}.dmg"
    end
    on_catalina do
      version "4.3.0"
      sha256 "c5646b221d61ba55c8e1025a646718d1244333bd57e2a7bccc8eb71c5a7be585"

      url "https://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Mac-x64-v#{version.dots_to_hyphens}.dmg"
    end
    on_big_sur do
      version "4.5.1"
      sha256 "15d589a27636edc4a4b9e9685950d857c7dd076d310497d650f90a387645456a"

      url "https://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Intel-Mac-x64-v#{version.dots_to_hyphens}.dmg"
    end
    on_monterey do
      version "4.5.1"
      sha256 "15d589a27636edc4a4b9e9685950d857c7dd076d310497d650f90a387645456a"

      url "https://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Intel-Mac-x64-v#{version.dots_to_hyphens}.dmg"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "4.5.1"
    sha256 arm:   "58c72fca0b42588060c21d4d677cc8ffe377ef82409e7f2a73fff0fc2163d278",
           intel: "15d589a27636edc4a4b9e9685950d857c7dd076d310497d650f90a387645456a"

    url "https://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-#{arch}-v#{version.dots_to_hyphens}.dmg"

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

  depends_on macos: ">= :high_sierra"

  app "Sonic Pi.app"

  zap trash: [
    "~/.config/sonic-pi.net",
    "~/.sonic-pi",
    "~/Library/Preferences/net.sonic-pi.app.plist",
    "~/Library/Saved Application State/net.sonic-pi.app.savedState",
  ]
end
