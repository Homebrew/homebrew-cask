cask "go-shiori" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.0"
  sha256 arm:   "c39635ce077ac8013343c4cf8ac8a4c71bf44a80da292a913d849eaa6712c011",
         intel: "fdb971ead7b46da0a869bf9e327190ee0c0d623a27fbfdaacb17c10c205ff3a0"

  url "https://github.com/go-shiori/shiori/releases/download/v#{version}/shiori_Darwin_#{arch}_#{version}.tar.gz"
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
