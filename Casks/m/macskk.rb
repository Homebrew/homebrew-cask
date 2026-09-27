cask "macskk" do
  version "2.21.0"
  sha256 "f9bdc4faf4189c3eb658cb2ec78445b46d236948145b0da40f672f6d27509fec"

  url "https://github.com/mtgto/macSKK/releases/download/#{version}/macSKK-#{version}.dmg"
  name "macSKK"
  desc "SKK Input Method"
  homepage "https://github.com/mtgto/macSKK"

  depends_on macos: :ventura

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
