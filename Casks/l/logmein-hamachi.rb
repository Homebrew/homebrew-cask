cask "logmein-hamachi" do
  on_sonoma :or_older do
    version "23000048"
    sha256 "f7ef83b188c134194d61f0d8e4d1e6112f8300eb2b3cf19d4cdfdb045d8fa484"

    livecheck do
      url :homepage
      regex(%r{macVersionHighSierra\s*=\s*["'][^"']*?/osx[._-]v?(\d+(?:\.\d+)*)/LogMeInHamachi\.zip}i)
    end
  end
  on_sequoia :or_newer do
    version "23000049"
    sha256 "f479ebba6f4a166fe26d78ba47de64fd27f8008d407de2b66cd61e6c64d633e5"

    livecheck do
      url :homepage
      regex(%r{macVersionSequoia\s*=\s*["'][^"']*?/osx[._-]v?(\d+(?:\.\d+)*)/LogMeInHamachi\.zip}i)
    end
  end

  url "https://vpn.net/installers/osx_#{version}/LogMeInHamachi.zip"
  name "LogMeIn Hamachi"
  desc "Hosted VPN service that lets you securely extend LAN-like networks"
  homepage "https://vpn.net/"

  installer manual: "LogMeInHamachiInstaller.app"

  uninstall script: {
    executable: "/Applications/LogMeIn Hamachi Uninstaller.app/Contents/Resources/uninstaller.sh",
    sudo:       true,
  }

  zap trash: [
    "/Library/Application Support/LogMeIn Hamachi",
    "~/Library/Application Support/LogMeIn Hamachi",
  ]
end
