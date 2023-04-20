cask "go-server" do
  arch arm: "-aarch64"

  version "23.1.0,16079"
  sha256 arm:   "1caf1bc387d4b2333011f005eabd1d4bdc7d5228128cd434c92538ec4c43e6b3",
         intel: "f36e5dcb5d6ec8aa58daa34055e4ecbd205d0554b33e94d1f5ec0370e0adc6a1"

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
