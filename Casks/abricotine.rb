cask "abricotine" do
  version "0.7.0"
  sha256 "ccd48b7967dabb6e59872010222f60f455ac195b3c549c206d0c1ed3237fc3c2"

  url "https://github.com/brrd/Abricotine/releases/download/#{version}/Abricotine-#{version}-osx-x64.zip",
      verified: "github.com/brrd/Abricotine/"
  name "abricotine"
  desc "Markdown editor with inline preview"
  homepage "https://abricotine.brrd.fr/"

  # We need to check all releases since not all releases are for macOS.
  livecheck do
    url "https://github.com/brrd/Abricotine/releases"
    strategy :page_match
    regex(%r{href=.*?/Abricotine-(\d+(?:\.\d+)*)-osx-x64\.zip}i)
  end

  app "Abricotine-darwin-x64/Abricotine.app"

  zap trash: "~/Library/Application Support/Abricotine"
end
