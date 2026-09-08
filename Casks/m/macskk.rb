cask "macskk" do
  version "2.19.0"
  sha256 "6f2b5e24e7a412224b72c33c8cd0084207dfad40d3aa94357867d690019696df"

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
