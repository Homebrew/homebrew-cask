cask "tfswitch" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.19.0"
  sha256 arm:          "e84e1cb04f995cf286d46b2a5488fb7cb6acdc29b8942178c0816dcc605bd2e3",
         intel:        "e9d21deaece69523c84a810e783f2ef0b67dc0d4a45e9663bddbc7339cf1e9f3",
         arm64_linux:  "94168e9bf1a0eff15038058f73494f7d30e12432c1cab6b40b3fcd2f38dfc157",
         x86_64_linux: "f1502b83f35ddce7f5bb25a2a2ca3fa4c56930e5f8f7a423cea0bdef384fb61b"

  url "https://github.com/warrensbox/terraform-switcher/releases/download/v#{version}/terraform-switcher_v#{version}_#{os}_#{arch}.tar.gz"
  name "Terraform Switcher"
  desc "Command-line tool to switch between Terraform versions"
  homepage "https://tfswitch.warrensbox.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "tfswitch"
  bash_completion "completions/tfswitch.bash"
  fish_completion "completions/tfswitch.fish"

  zap trash: "~/.terraform.versions"
end
