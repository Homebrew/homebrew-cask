cask "manta" do
  version "1.1.4"
  sha256 "f980f8d0c233e923a2352fd10521c1a04d059bc15140504bb7d2cfe235838776"

  url "https://github.com/hql287/Manta/releases/download/v#{version}/Manta-#{version}-mac.zip",
      verified: "github.com/hql287/Manta/"
  name "Manta"
  desc "Invoicing desktop app with customizable templates"
  homepage "https://getmanta.app/"

  deprecate! date: "2024-07-27", because: :unmaintained

  app "Manta.app"

  caveats do
    requires_rosetta
  end
end
