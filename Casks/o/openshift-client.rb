cask "openshift-client" do
  arch arm: "-arm64"

  version "4.15.3"
  sha256 arm:   "7f57f35873310954a98f2c9bb498eaf6d51855fbe40c91d0699d1f6d5f9aa791",
         intel: "8130a83f5eaf1c6235059e2464f31137ed7da89190b74e695e60df3e7d438351"

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
