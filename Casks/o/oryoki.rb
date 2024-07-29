cask "oryoki" do
  version "0.2.2"
  sha256 "419a251b1be83c1f11763d4713920f5e7676a2cb23fc9e359e0d2d4fd349e23f"

  url "https://github.com/thmsbfft/oryoki/releases/download/#{version}/Oryoki-#{version}.zip",
      verified: "github.com/thmsbfft/oryoki/"
  name "Oryoki"
  name "Ōryōki"
  name "応量器"
  desc "Experimental web browser with a thin interface"
  homepage "http://oryoki.io/"

  deprecate! date: "2024-07-27", because: :unmaintained

  depends_on macos: ">= :el_capitan"

  app "Oryoki.app"

  caveats do
    requires_rosetta
  end
end
