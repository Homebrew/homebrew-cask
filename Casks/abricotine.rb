cask "abricotine" do
  version "0.7.0"
  sha256 "ccd48b7967dabb6e59872010222f60f455ac195b3c549c206d0c1ed3237fc3c2"

  # github.com/brrd/Abricotine/ was verified as official when first introduced to the cask
  url "https://github.com/brrd/Abricotine/releases/download/#{version}/Abricotine-#{version}-osx-x64.zip"
  appcast "https://github.com/brrd/Abricotine/releases.atom"
  name "abricotine"
  desc "Markdown editor with inline preview"
  homepage "https://abricotine.brrd.fr/"

  app "Abricotine-darwin-x64/Abricotine.app"

  zap trash: "~/Library/Application Support/Abricotine"
end
