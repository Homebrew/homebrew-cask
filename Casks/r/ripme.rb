cask "ripme" do
  version "2.1.12-7-d0b97acd"
  sha256 "ac40e5ff60f8e0bc7832874de529283a77f9e07d5a7d4a0e8f81e05d43e2df58"
  
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
