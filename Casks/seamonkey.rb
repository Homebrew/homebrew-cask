cask "seamonkey" do
  version "2.53.9.1"

  language "de" do
    sha256 "7c62c94f75949a9734dc3489837df1e01140489dd0039fcd3092ac7b66ece3b2"
    "de"
  end
  language "en-GB" do
    sha256 "93ba9a221ab7d45884674cdb7c2b3aae2338562ca57d0433c17fed84b5dd666e"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "c952b27ec084af1877f7bdbfd60ee088af1122830e84ad58c16e25fbde1080ac"
    "en-US"
  end
  language "fr" do
    sha256 "0295ee177b86690067616976a396973e9f0848f0a1c94deec596e4657fb2d912"
    "fr"
  end
  language "it" do
    sha256 "bcb4a1441ba9de808e84008dbba192219d74f7a5ba206e03337f3e18b66376f1"
    "it"
  end
  language "ru" do
    sha256 "269cb3cc2a5e2b406eb79cbb7369042ab1c98f9a69875d5616cd6eeb24f8c29a"
    "ru"
  end

  url "https://archive.mozilla.org/pub/seamonkey/releases/#{version}/mac/#{language}/seamonkey-#{version}.#{language}.mac.dmg",
      verified: "mozilla.org/pub/seamonkey/releases/"
  name "SeaMonkey"
  desc "Development of SeaMonkey Internet Application Suite"
  homepage "https://www.seamonkey-project.org/"

  livecheck do
    url "https://www.seamonkey-project.org/releases/"
    strategy :page_match
    regex(%r{href=.*?/seamonkey-(\d+(?:\.\d+)*)\.en-US\.mac\.dmg}i)
  end

  auto_updates true

  app "SeaMonkey.app"
end
