cask "parse" do
  version "3.0.5"
  sha256 "30c305a76beb8913392b74977a6801e817c3477bd3de72ecd1887a8ca57ea888"

  url "https://github.com/parse-community/parse-cli/releases/download/release_#{version}/parse",
      verified: "github.com/parse-community/"
  appcast "https://github.com/parse-community/parse-cli/releases.atom"
  name "Parse"
  homepage "https://parseplatform.org/"

  container type: :naked

  binary "parse"
end
