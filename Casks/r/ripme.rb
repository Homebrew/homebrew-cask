cask "ripme" do
  version "2.1.13-1-54ee67e1"
  sha256 "54da830c9ac94a536b293933295d46bff9ddd46ec58348c55acd32e70cd7ada6"
  
  url "https://github.com/RipMeApp/ripme/releases/download/#{version}/ripme-#{version}.jar"
  name "RipMe"
  desc "Album ripper for various websites"
  homepage "https://github.com/RipMeApp/ripme"

  auto_updates true
  container type: :naked

  artifact "ripme-#{version}.jar", target: "#{appdir}/ripme.jar"

  uninstall delete: "/Applications/rips"

  zap trash: "~/Library/Application Support/ripme"

  caveats do
    depends_on_java "17+"
  end
end
