cask "openshift-client" do
  arch arm: "-arm64"

  version "4.15.16"
  sha256 arm:   "8b71144e98d0c65637124c0aea49d66dabc4d62e98a17ab469c5237688da78e7",
         intel: "9b0dffc64107aa046e18f93cf3d791e7ac9efbbca72a3db68db008f33c0e8518"

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
