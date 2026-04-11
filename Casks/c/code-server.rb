cask "code-server" do
  arch arm: "arm64", intel: "amd64"
  os macos: "macos", linux: "linux"

  version "4.115.0"
  sha256 arm:          "c96d7da9239da5bcd204ac0314742c38386a91ed8feea08150a950c53b1c7c7e",
         intel:        "ba0c719202e6994f8fe25cc07ed37de27aa9e54827c75eb568db609bd1e11373",
         arm64_linux:  "8848f99c25172fe9128ef77ac1937387be932bc20d0eab7d067e9018684d4074",
         x86_64_linux: "2d43f4023fe425ecf41806e57cbbc64ce7d3be50cfd76690dc45f52375a836ed"

  url "https://github.com/coder/code-server/releases/download/v#{version}/code-server-#{version}-#{os}-#{arch}.tar.gz"
  name "code-server"
  desc "Run VS Code on a remote server"
  homepage "https://github.com/coder/code-server"

  binary "code-server-#{version}-#{os}-#{arch}/bin/code-server"

  zap trash: [
    "~/.config/code-server",
    "~/.local/share/code-server",
  ]
end
