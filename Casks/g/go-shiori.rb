cask "go-shiori" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.3"
  sha256 arm:   "170737f612c93222bf42e00a1e7e5c3887beb88420a37b5b511aab1c83771d14",
         intel: "daf753c9e30abed808b47065499e821ae8e99fb9220c380c0ef83dd10d407757"

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
