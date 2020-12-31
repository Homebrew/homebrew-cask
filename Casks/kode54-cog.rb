cask "kode54-cog" do
  version "1312,58b6ea588"
  sha256 "d99777b26b18fb04216bf144ef54ed13dfc2e311502d46df51c903211723d87b"

  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip",
      verified: "losno.co/cog/"
  name "Cog"
  homepage "https://kode54.net/cog/"

  livecheck do
    url "https://balde.losno.co/cog/mercury.xml"
    strategy :sparkle do |item|
      item.version.split("-g", 2).join(",")
    end
  end

  auto_updates true

  app "Cog.app"
end
