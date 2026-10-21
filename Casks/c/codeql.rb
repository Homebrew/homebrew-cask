cask "codeql" do
  arch arm: on_system_conditional(macos: "64", linux: "-arm64"), intel: "64"
  os macos: "osx", linux: "linux"

  version "2.27.3"
  sha256 arm:          "67732b562bfda6ae2617cf143a496b0f72f4bed0532df966db933917a10b01e8",
         intel:        "67732b562bfda6ae2617cf143a496b0f72f4bed0532df966db933917a10b01e8",
         arm64_linux:  "4d9001f704f3e3e9145e2ac3db23bda323968f9f674cb1b507f195abddea0170",
         x86_64_linux: "845075a2fa2fdf72629adc6cbde6264691b698d1f294bd27f10c6b579cd750a4"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-#{os}#{arch}.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "#{staged_path}/codeql/codeql"

  zap trash: "~/.codeql"
end
