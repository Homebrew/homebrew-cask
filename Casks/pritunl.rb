cask "pritunl" do
  version "1.2.2897.44"

  if Hardware::CPU.intel?
    sha256 "eeb975cd24fa49673ed0c657d28dd8979bf72dd71f309da933febb59bfb18daa"

    url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip",
        verified: "github.com/pritunl/pritunl-client-electron/"

    pkg "Pritunl.pkg"
  else
    sha256 "e41837b0c893461c9c435632db7accb919c4f30f8a107b75055b0d313445e69b"

    url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.arm64.pkg.zip",
        verified: "github.com/pritunl/pritunl-client-electron/"

    pkg "Pritunl.arm64.pkg"
  end

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
