cask "openshift-client" do
  arch arm: "-arm64"

  version "4.15.1"
  sha256 arm:   "1355a50144c6cc1a674b06ea37d88c659771ef1277ef9fef2a56621cb95d4527",
         intel: "5aaff28f3e5bf3c74726f358cd31c6a17bfd18d6d95a0a52025fd8b163abfb98"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"

  zap trash: "~/.kube/config"
end
