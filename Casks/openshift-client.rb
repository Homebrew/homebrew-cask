cask "openshift-client" do
  arch arm: "-arm64"

  version "4.12.13"
  sha256 arm:   "f8f7740b504eeb9fcf792b3787d9faf87757802f10fbefb917a0bdb2d988f786",
         intel: "0577506c00bbc13aab96f1fd5bcc0a0bc391f88e27b37268f2990294d8f8e4d0"

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
