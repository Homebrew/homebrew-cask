cask "openshift-client" do
  arch arm: "-arm64"

  version "4.19.9"
  sha256 arm:   "6061444be48d7093d301bb1cc9c7e5147c7985f11a7083e3b75e02a0b8d9eaa1",
         intel: "cdf43664269c8f8b8cfe81d078c81404019f7ac6a700b5c83492c841a7ceb33c"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  disable! date: "2026-09-01", because: :unsigned

  binary "oc"

  zap trash: "~/.kube/config"
end
