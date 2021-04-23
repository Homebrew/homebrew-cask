cask "pritunl" do
  version "1.2.2768.85"

  if Hardware::CPU.intel?
    sha256 "833d2ed4b5a8d36af110b0bcb91db6bcef51f0c2b3dc1c73186befb450c1fcb2"

    url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip",
        verified: "github.com/pritunl/pritunl-client-electron/"

    pkg "Pritunl.pkg"
  else
    sha256 "db042372c29a6bd99ca9f769c875e0778c8c4d1b6f3266a16b92547056ca2b42"

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
