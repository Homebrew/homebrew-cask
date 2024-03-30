cask "go-shiori" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.1"
  sha256 arm:   "0700771e6ded0c80302acf6ce04e9deb2cf9c04c4ae85419989cab9eaabf911a",
         intel: "a1eea9b2d1fbd04618529c790e23fe81a5852ed7d704a029033ea43d63ac2ad1"

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
