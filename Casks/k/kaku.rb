cask "kaku" do
  version "2.0.2"
  sha256 "ba89cd59a49b7c21d7ccde09044e2fed7e2deeb617798ac45281f83130e313ca"

  url "https://github.com/EragonJ/Kaku/releases/download/#{version}/Kaku-#{version}.dmg",
      verified: "github.com/EragonJ/Kaku/"
  name "Kaku"
  homepage "https://kaku.rocks/"

  deprecate! date: "2024-07-17", because: :unmaintained

  app "Kaku.app"

  caveats do
    requires_rosetta
  end
end
