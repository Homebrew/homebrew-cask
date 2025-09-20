cask "ripme" do
  version "2.1.19-16-78ff73fb"
  sha256 "f9d3a3f79b08aabcc3caba1423f8f57bc7c9d0952613e92b97f2e89b5dab51c6"

  url "https://github.com/RipMeApp/ripme/releases/download/#{version}/ripme-#{version}.jar"
  name "RipMe"
  desc "Album ripper for various websites"
  homepage "https://github.com/RipMeApp/ripme"

  livecheck do
    url "https://raw.githubusercontent.com/RipMeApp/ripme/refs/heads/main/ripme.json"
    strategy :json do |json|
      json["latestVersion"]
    end
  end

  auto_updates true
  container type: :naked

  artifact "ripme-#{version}.jar", target: "#{appdir}/ripme.jar"

  uninstall delete: "/Applications/rips"

  zap trash: "~/Library/Application Support/ripme"

  caveats do
    depends_on_java "17+"
  end
end
