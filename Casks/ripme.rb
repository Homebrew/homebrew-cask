cask "ripme" do
  version "1.7.93"
  sha256 "357639535c112ca857117151321141cb08ad313021079d522c2c5d15ee799998"

  url "https://github.com/RipMeApp/ripme/releases/download/#{version}/ripme.jar"
  appcast "https://github.com/RipMeApp/ripme/releases.atom"
  name "RipMe"
  desc "Album ripper for various websites"
  homepage "https://github.com/RipMeApp/ripme"

  auto_updates true
  container type: :naked

  app "ripme.jar"

  caveats do
    depends_on_java "8+"
  end
end
