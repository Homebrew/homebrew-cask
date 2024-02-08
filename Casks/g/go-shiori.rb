cask "go-shiori" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.5"
  sha256 arm:   "4594adfa928a090b7c2aa59f133aaf100bf12c3e2b03dc1d3111dce248d2e27f",
         intel: "155abc39774ded50441d078d1e74163a46672c0635c42624232654269fe0abdf"

  url "https://github.com/go-shiori/shiori/releases/download/v#{version}/shiori_Darwin_#{arch}.tar.gz"
  name "Shiori"
  desc "Shiori is a simple bookmarks manager written in the Go language"
  homepage "https://github.com/go-shiori/shiori"

  binary "shiori"

  zap trash: "~/Library/ApplicationSupport/shiori"

  caveats do
    <<~EOS

      If this is a fresh install or you're upgrading versions, you'll need to migrate the database to apply any required changes for Shiori to work properly:
        shiori migrate

    EOS
  end
end
