cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.14"
  sha256 arm:   "eaa3c4fadaff8600e1d7234206b1f7d63f1ac816ad568a878ddd0237d3f3b336",
         intel: "439b834de0bab455c41747d213a7387d1a4c455b48da8ef1a5af9417e529625b"

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
