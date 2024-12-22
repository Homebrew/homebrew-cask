cask "go-shiori" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.2"
  sha256 arm:   "fcfd29dfb65ae14f36118568cc22979b7154f45f5c8319a84ed90ce1849bc390",
         intel: "0bb2fb24b33d2a554bac0517a40bf3d3da1ad135a7389a98fb7c6ffe2ea1ff14"

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
