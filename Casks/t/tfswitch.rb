cask "tfswitch" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.20.0"
  sha256 arm:          "20c69987dd2aa7d201d54af4a8eb2526074cc2873ed96fdacf1b01431b5e3da0",
         intel:        "5d6574d97e00c68875ab302640b6517724e43043ea8fefe1120f45f72f314be7",
         arm64_linux:  "6343ad29a08e8cc3ca1d6fea8f102645cf58540ed3b0953cfe032328c2bc44ca",
         x86_64_linux: "a15b3d5201dfb0f1e17f3346297c0f594ba66240d245367520d1ca70164dda12"

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
