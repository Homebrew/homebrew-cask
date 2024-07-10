cask "energia" do
  version "1.8.10E23"
  sha256 "031c18b8aaa05962df7cd1d660dfe3366a3dc6ff148fd7bdb89fd37ebbc492e5"

  url "https://s3.amazonaws.com/energiaUS/distributions/energia-#{version}-macosx-signed.zip",
      verified: "s3.amazonaws.com/energiaUS/"
  name "Energia"
  desc "Electronics prototyping platform"
  homepage "https://energia.nu/"

  livecheck do
    url "https://energia.nu/download/"
    regex(/file=energia[._-]?v?(\d+(?:\.[\dE]+)+)[._-]macosx[._-]signed\.zip/i)
  end

  app "Energia.app"

  zap trash: [
    "~/Library/Energia15",
    "~/Library/Saved Application State/nu.energia.Energia.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
