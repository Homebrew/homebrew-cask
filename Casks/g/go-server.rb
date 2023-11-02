cask "go-server" do
  arch arm: "-aarch64"

  version "23.4.0,17731"
  sha256 arm:   "98a659c189e59f935e9980671a77ddaa3b7e9c7fd47843fe97470a37b6db34a6",
         intel: "ef04a875c39d117a3a160ac3ac0f46560aaf5f84e3f5b5a078a3cbd8208414b8"

  url "https://download.gocd.org/binaries/#{version.csv.first}-#{version.csv.second}/osx/go-server-#{version.csv.first}-#{version.csv.second}-osx#{arch}.zip"
  name "Go Server"
  name "GoCD Server"
  desc "Server for the Go Continuous Delivery platform"
  homepage "https://www.gocd.org/"

  livecheck do
    url "https://download.gocd.org/releases.json"
    regex(/go[._-]server[._-]v?(\d+(?:\.\d+)+)[._-](\d+)[._-]osx\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  binary "go-server-#{version.csv.first}/bin/go-server"

  # No zap stanza required
end
