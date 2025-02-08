cask "switcher" do
    version "0.0.1"
    sha256 "ad160934a2f8ca631c2fbf4aab16977e53d0d18858b4296ef16169793dc1949e"
  
    url "https://github.com/EsmaeelNabil/switcher/releases/download/v#{version}/switcher.dmg"
    name "switcher"
    desc "Switch between your open apps with ease"
    homepage "https://github.com/EsmaeelNabil/switcher"
  
    livecheck do
      url :url
      strategy :github_latest
    end
  
    depends_on macos: ">= :sierra"
  
    app "switcher.app"
  
  end  