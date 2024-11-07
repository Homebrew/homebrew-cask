cask "openshift-client" do
  arch arm: "-arm64"

  version "4.17.4"
  sha256 arm:   "68c8581491e2b688c01d4fe3d6646296ae56e590d3a8f384e5c3e3609763db95",
         intel: "89d9331478143de827ca0b8709370e60ba0bd60917ec2f00b2a1a52c38e68649"

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
