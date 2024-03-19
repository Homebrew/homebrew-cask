cask "go-shiori" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.0"
  sha256 arm:   "2f5157eceaa6c42791b2a15172658cf5a370acf8056cd8e09c09b447a31029f2",
         intel: "ab77a416c8d2b483eff7469fbc9eb650d5588e5c55d8be6b6196765f737ee2c8"

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
