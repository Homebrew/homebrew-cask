cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261102075306-7c3f1c73b872"
  sha256 arm:          "156a9d5d658913f3a26e5382e197bb653e97102377a1d077e407b02084d53ac9",
         intel:        "d825487beb74ae065fc72b00d15b7a205cfb4cdedc056bf53a6496d75e1d143d",
         arm64_linux:  "696e9d319b5caed3282758ec018ef1425a22cdd617d2eb2aa3b4364380cf4376",
         x86_64_linux: "6595d365143f90458a41ebfe9b24b6ea85c9b8d82ae3cd02047388efcfc3247a"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/^v?(\d+(?:\.\d+)+.*)$/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
