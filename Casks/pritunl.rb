cask "pritunl" do
  if Hardware::CPU.intel?
    if MacOS.version <= :catalina
      version "1.2.2615.73"
      sha256 "275f8498fb736a0a1ddebcbfcb6f03e82b8eb4fedf9b7eb61b0e306cb6de4a71"
    else
      version "1.2.2685.61"
      sha256 "ae88691be2a4a2c07a87e6a5441fa7c99755418830e70ac52fb2d2ca557f402c"
    end

    url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip",
        verified: "github.com/pritunl/pritunl-client-electron/"

    pkg "Pritunl.pkg"
  else
    version "1.2.2685.61"
    sha256 "daa6871edc484bbfc7e8035f6844b2dffa340ebd3e0f92e8a5b3a8d94092d257"

    url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.arm64.pkg.zip",
        verified: "github.com/pritunl/pritunl-client-electron/"

    pkg "Pritunl.arm64.pkg"
  end

  appcast "https://github.com/pritunl/pritunl-client-electron/releases.atom"
  name "Pritunl"
  desc "OpenVPN client"
  homepage "https://client.pritunl.com/"

  uninstall pkgutil:   "com.pritunl.pkg.Pritunl",
            launchctl: [
              "com.pritunl.client",
              "com.pritunl.service",
            ],
            signal:    ["TERM", "com.electron.pritunl"],
            delete:    "/Applications/Pritunl.app"

  zap trash: [
    "~/Library/Application Support/pritunl",
    "~/Library/Caches/pritunl",
    "~/Library/Preferences/com.electron.pritunl*",
  ]
end
