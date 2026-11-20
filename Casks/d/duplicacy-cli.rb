cask "duplicacy-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "osx", linux: "linux"

  version "3.3.1"
  sha256 arm:          "6089ba238887e54e95806a03082d209df4e9b2a48654fd8e1ddf37eabcf0f798",
         intel:        "ab505e767979fb00501417022d1baffc4f6d9bebb298bbca52619b0d2f3b4673",
         arm64_linux:  "7f6db2c7fc2322f33b960ea714f166f199a148155e4b5cd6ad8958768c3f7757",
         x86_64_linux: "3ab76827dded13cf935a1886216145e6316b74fbe981e4cb4b298db8fa01c117"

  url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_#{os}_#{arch}_#{version}"
  name "Duplicacy Command Line Version"
  desc "Cloud backup tool"
  homepage "https://duplicacy.com/"

  binary "duplicacy_#{os}_#{arch}_#{version}", target: "duplicacy"

  zap trash: "~/.duplicacy"
end
