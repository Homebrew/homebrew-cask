cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.34.0-beta.01"
  sha256 arm:          "687ad01f2ffbc465b15e4f8ce94bffefad3ad3bcb3258b6e173fc7a65078c420",
         x86_64:       "cf6faa673be56db09bd26437d81a30743681e21e9a88692c636b8d618817cd34",
         x86_64_linux: "86cb85eb4396e535455c9c9d8145a76d5c05f7bd9902f360bd9f281d3e313b64",
         arm64_linux:  "4040fd20ac55c84b95b46beeae77319ee38cef69c3a69fe47360078391060510"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_#{os}_#{arch}_v#{version}.zip",
      verified: "cache.agilebits.com/dist/1P/op2/pkg/"
  name "1Password CLI"
  desc "Command-line helper for the 1Password password manager"
  homepage "https://developer.1password.com/docs/cli"

  livecheck do
    url "https://app-updates.agilebits.com/check/1/0/CLI2/en/0/Y"
    strategy :json do |json|
      json["version"]
    end
  end

  conflicts_with cask: [
    "1password-cli",
    "1password-cli@1",
  ]

  binary "op"

  zap trash: "~/.config/op"
end
