cask "openshift-client" do
  arch arm: "-arm64"

  version "4.14.5"
  sha256 arm:   "3b0923247666e1f9b104b6b7eddadeb9432f480a0a6463a617e1ac5c2f77e8bb",
         intel: "16a2bea0972fb254bfae1e4118a0cf1fb791f97c00f4c3de000539d42103bf41"

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
