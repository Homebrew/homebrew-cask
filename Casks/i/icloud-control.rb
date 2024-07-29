cask "icloud-control" do
  version "1.2.0"
  sha256 "75d7c2d14a5af9b25371cee252c60f8a3ebaaaaf89514130f91c6b322bfdfa2d"

  url "https://github.com/Obbut/iCloud-Control/releases/download/#{version}/iCloud.Control.zip"
  name "iCloud Control"
  desc "User-controlled selective sync for iCloud Drive"
  homepage "https://github.com/Obbut/iCloud-Control"

  deprecate! date: "2024-07-17", because: :discontinued

  app "iCloud Control.app"

  caveats do
    requires_rosetta
  end
end
