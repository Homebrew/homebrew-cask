cask "ripme" do
  version "2.1.20-14-5a3070e4"
  sha256 "5a49f48ac63b0085a90726787141fb826ee70a63f26450bf0edf6ef6cbcb4d13"

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
