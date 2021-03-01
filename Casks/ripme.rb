cask "ripme" do
  version "1.7.94"
  sha256 "1ebe144d0f294c4e8b482742a2588201f8b962fbcebbbd109627e1fc9e2b6d94"

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
