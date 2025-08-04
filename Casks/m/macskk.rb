cask "macskk" do
  version "2.3.2"
  sha256 "d51136eeb31ce721c3d3bfcf26f11ba0712c4cf8dc728fd7487a9ab3247a2127"

  url "https://github.com/mtgto/macSKK/releases/download/#{version}/macSKK-#{version}.dmg"
  name "macSKK"
  desc "SKK Input Method"
  homepage "https://github.com/mtgto/macSKK"

  depends_on macos: ">= :ventura"

  pkg "macSKK-#{version}.pkg"

  uninstall quit:    [
              "net.mtgto.inputmethod.macSKK",
              "net.mtgto.inputmethod.macSKK.FetchUpdateService",
              "net.mtgto.inputmethod.macSKK.SKKServClient",
            ],
            pkgutil: [
              "net.mtgto.inputmethod.macSKK.app",
              "net.mtgto.inputmethod.macSKK.dict",
            ]

  zap trash: [
    "~/Library/Application Scripts/net.mtgto.inputmethod.macSKK",
    "~/Library/Containers/net.mtgto.inputmethod.macSKK",
  ]
end
