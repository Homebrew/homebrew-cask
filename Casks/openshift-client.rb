cask "openshift-client" do
  arch arm: "-arm64"

  version "4.12.10"
  sha256 arm:   "1427d21245ad2f7b91097d9f8bd74dd05233dd4aef7710711d88dbdb7cb16f66",
         intel: "456fcba221236a2e4b867df7453ba9d71c521579d6999ad76a3b43b0e0f9d4b9"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"
end
