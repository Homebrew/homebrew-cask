cask "openshift-client" do
  arch arm: "-arm64"

  version "4.13.5"
  sha256 arm:   "8e81ebd062827b565f634253b00a3c26872c7e55ff950b4aaf49a26a5831fb99",
         intel: "568f8442a280d401b9d5ddade35e7d82704ce2333bd78e1b2dd39f5c8575ff80"

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
