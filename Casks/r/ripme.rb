cask "ripme" do
  version "2.1.12-7-d0b97acd"
  sha256 "87671af2600aca3374295680ac2b7ffbc3aed5eadff85669e995e584fc8b29da"

  url "https://github.com/RipMeApp/ripme/releases/download/#{version}/ripme-#{version}-0.jar"
  name "RipMe"
  desc "Album ripper for various websites"
  homepage "https://github.com/RipMeApp/ripme"

  auto_updates true
  container type: :naked

  artifact "ripme-#{version}-0.jar", target: "#{appdir}/ripme.jar"

  uninstall delete: "/Applications/rips"

  zap trash: "~/Library/Application Support/ripme"

  caveats do
    depends_on_java "17+"
  end
end
