cask "openlayer" do
    arch arm: "arm64", intel: "x86_64"
    os macos: "Darwin", linux: "Linux"

    version :latest
    sha256 :no_check

    url "https://downloads.openlayer.com/cli/download/#{version}/openlayer-cli_#{os}_#{arch}.tar.gz"
    name "Openlayer CLI"
    desc "Command-line interface for Openlayer"
    homepage "https://www.openlayer.com/docs"

    binary "openlayer-cli", target: "openlayer"
end
