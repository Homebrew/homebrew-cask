cask "kiota" do
  arch arm: "arm64", intel: "x64"

  version "1.9.1"
  sha256 arm:   "915c30c3f083af132b1dff2b4a637d465cb190b5ef0bf01ccb4764e995c36b28",
         intel: "5b67343e6526626d4d782cd1f767975877a4f57d7c15b60e6068cfa2579ec9e2"

  url "https://github.com/microsoft/kiota/releases/download/v#{version}/osx-#{arch}.zip",
      verified: "github.com/microsoft/kiota/"
  name "kiota"
  desc "Use Kiota to generate API clients to call any OpenAPI-described API"
  homepage "https://learn.microsoft.com/en-us/openapi/kiota/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "kiota", target: "#{HOMEBREW_PREFIX}/bin/kiota"

  # zap trash: "kiota"
end
