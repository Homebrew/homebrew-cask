cask "azd" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.25.4"
  sha256 arm:          "ec347d6405207c88ba3debde3661029163f68f94c7d48b39d536f20e4d221385",
         intel:        "a2feaf8bb2ae4abd2998a927010314698fc3cb0f3220528112ae41c404f3ffd8",
         arm64_linux:  "56e0ce194344b989c3876e47a3ddd95b1dc912fc1c6f5c97a94434a12efecfe2",
         x86_64_linux: "5d8376aa1861911433b5fc9d6334cec15c99f604d4a925a108b4cb4ea8a6712f"

  url_ext = on_system_conditional macos: "zip", linux: "tar.gz"

  url "https://github.com/Azure/azure-dev/releases/download/azure-dev-cli_#{version}/azd-#{os}-#{arch}.#{url_ext}"
  name "Azure Developer CLI"
  desc "Developer-centric CLI to build, deploy, and operate Azure applications"
  homepage "https://github.com/Azure/azure-dev"

  livecheck do
    url :url
    regex(/^azure-dev-cli[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  conflicts_with cask:    "azd@daily",
                 formula: "azure-dev"

  binary "azd-#{os}-#{arch}", target: "azd"

  postflight do
    File.write("#{staged_path}/.installed-by.txt", "homebrew-core-cask")
  end

  zap trash: "~/.azd"
end
